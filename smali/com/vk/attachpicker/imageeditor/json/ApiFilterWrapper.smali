.class public Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;
.super Ljava/lang/Object;
.source "ApiFilterWrapper.java"


# static fields
.field public static final FILTER_FORMAT_VERSION:I = 0x2

.field public static final FILTER_ORIGINAL:Ljava/lang/String; = "FILTER_ID_ORIGINAL"


# instance fields
.field public final filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final v:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vk/attachpicker/imageeditor/json/ApiFilter;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/vk/attachpicker/imageeditor/json/ApiFilter;
    .param p4, "v"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->name:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    .line 19
    iput p4, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->v:I

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "jo":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .restart local p1    # "jo":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v0, "id"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->id:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "name"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->name:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    const-string/jumbo v1, "preset"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    .line 30
    const-string/jumbo v0, "v"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->v:I

    .line 31
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ApiFilterWrapper{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
