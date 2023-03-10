<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 */

namespace common\models;

use Yii;
use yii\base\Model;
use yii\web\UploadedFile;

class ImageUpload extends Model
{

    // public $image;


    // public function uploadFile(UploadedFile $file)
    // {

    //     $file->saveAs(Yii::getAlias('@web') . 'uploads/' . $file->name);
    // }


    public $image;

      public function rules() {
         return [
            [['image'], 'file', 'skipOnEmpty' => false, 'extensions' => 'jpg, png'],
         ];
      }
      public function uploadFile(UploadedFile $file, $currentImage) {
        $this->image=$file;  
        if($this->validate()){
         {
            if($this->fileExists($currentImage)){
                unlink($this->getFolder() . $currentImage);
            }

            $filename= $this->generateFilename();
            
            
            
            $this->image->saveAs('@frontend/web/uploads/' . $filename);
            
            }}

        return $filename;
      }

      public function fileExists($currentImage)
    {
        if(!empty($currentImage) && $currentImage != null)
        {
            return file_exists($this->getFolder() . $currentImage);
        }
    }

      private function getFolder(){
          return Yii::getAlias('@frontend/web/uploads/');
      }

      private function generateFilename(){
          return strtolower(md5(uniqid($this->image->baseName)) . '.' . $this->image->extension);
      }

      public function deleteCurrentImage($currentImage)
    {
        if($this->fileExists($currentImage))
        {
            unlink($this->getFolder() . $currentImage);
        }
    }


}
