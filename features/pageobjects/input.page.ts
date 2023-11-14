import { $ } from '@wdio/globals'
import Page from './page';

class InputPage extends Page {

    public get inputNumber(){
        return $('input[type="number"]')
    }

    public async writeNumber(number: string){
        await this.inputNumber.setValue(number);
    }

    
}
export default new InputPage();
