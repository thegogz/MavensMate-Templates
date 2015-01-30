public with sharing class {{ api_name }} {

    private {{ object_name }} record;

    private {{ api_name }}() {
        this.record = new {{ object_name }}();
    }

    public static {{ api_name }} getBuilder(){
        return new {{api_name}}();
    }

    public {{ object_name }} getRecord(){
        return record;
    }

    public {{ api_name }} save(){
        upsert record;
        return this;
    }

}