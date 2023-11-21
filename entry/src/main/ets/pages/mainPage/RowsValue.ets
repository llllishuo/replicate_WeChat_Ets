export function RowsValue(num: number){
  let str: string = ""
  for(let i=0;i<num;i++){
    str+="1rf";
    if(i!==num-1){
      str+=" ";
    }
  }
  return str;
}
