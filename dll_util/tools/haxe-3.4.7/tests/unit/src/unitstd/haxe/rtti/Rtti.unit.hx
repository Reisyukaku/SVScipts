haxe.rtti.Rtti.hasRtti(NonRttiClass) == false;
haxe.rtti.Rtti.hasRtti(RttiClass1) == true;
haxe.rtti.Rtti.hasRtti(RttiClass2) == true;

var cl = haxe.rtti.Rtti.getRtti(RttiClass1);
cl.isExtern == false;
cl.isInterface == false;
cl.params == [];
cl.fields.length == 1;
cl.superClass == null;
cl.interfaces.length == 0;
cl.fields.length == 1;
cl.statics.length == 1;
cl.tdynamic == null;

var cf = cl.statics.first();
cf.name == "v";
haxe.rtti.CType.CTypeTools.toString(cf.type) == "String";
cf.isPublic == false;
cf.isOverride == false;
cf.doc == null;
cf.get == RNormal;
cf.set == RNormal;
cf.params == [];
cf.platforms.length == 0;
cf.meta.length == 0;
cf.line == null;
cf.overloads == null;

var cf = cl.fields.first();
cf.name == "f";
haxe.rtti.CType.CTypeTools.toString(cf.type) == "Void -> Float";
cf.isPublic == true;
cf.isOverride == false;
cf.doc == null;
cf.get == RNormal;
cf.set == RMethod;
cf.params == [];
cf.platforms.length == 0;
cf.meta.length == 0;
//cf.line == null;
cf.overloads == null;

var cl = haxe.rtti.Rtti.getRtti(RttiClass2);
cl.isExtern == false;
cl.isInterface == false;
cl.params == [];
cl.fields.length == 0;
cl.superClass.path == "unit.RttiClass1";
cl.superClass.params.length == 0;
cl.interfaces.length == 0;
cl.fields.length == 0;
cl.statics.length == 0;
cl.tdynamic == null;

var cl = haxe.rtti.Rtti.getRtti(RttiClass3);
cl.isExtern == false;
cl.isInterface == false;
cl.params == [];
cl.fields.length == 1;
cl.superClass.path == "unit.RttiClass1";
cl.superClass.params.length == 0;
cl.interfaces.length == 0;
cl.fields.length == 1;
cl.statics.length == 0;
cl.tdynamic == null;

var cf = cl.fields.first();
cf.name == "f";
haxe.rtti.CType.CTypeTools.toString(cf.type) == "Void -> Int";
cf.isPublic == true;
cf.isOverride == true;
cf.doc == null;
cf.get == RNormal;
cf.set == RMethod;
cf.params == [];
cf.platforms.length == 0;
cf.meta.length == 0;
//cf.line == null;
cf.overloads == null;