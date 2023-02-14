/**
 * Team:你说的都队,NKU
 * coding by huangjingzhi 1810729, 
 */

$(function () {
    'use strict';
    $('#videoFile').change(ev => {
        $(ev.target).closest('form').trigger('submit');
    })
});