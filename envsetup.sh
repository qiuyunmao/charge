#1、修改./build/envsetup.sh文件
 function lunch()
 {
	#(1) modify
   if [ -z "$answer" ]
    then
        selection=msm8909_512-userdebug  # 
    elif (echo -n $answer | grep -q -e "^[0-9][0-9]*$")

   ....
   
   #(2)
    #add ctf  maoyuanqiu
    if [ -z $TARGET_PRODUCT ] ; then
        export TARGET_PRODUCT=$product
     fi

      #end
    export TARGET_BUILD_VARIANT=$variant
    export TARGET_BUILD_TYPE=release

 }
 
 function check_product()
 {
        #add ctf  maoyuanqiu 
        config_smb1360 $1

           if [ -z $TARGET_PRODUCT ] ; then
         TARGET_PRODUCT=$1
      fi
        #end 

 }
 
 #2 add new function config_smb1360
 function config_smb1360()
 {
	TARGET_PRODUCT=msm8909_512
 }
