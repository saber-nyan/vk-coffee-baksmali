.class final Lcom/facebook/share/internal/ShareInternalUtility$6;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$callId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/facebook/share/internal/ShareInternalUtility$6;->val$callId:Ljava/util/UUID;

    iput-object p2, p0, Lcom/facebook/share/internal/ShareInternalUtility$6;->val$attachments:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;

    .prologue
    .line 323
    iget-object v3, p0, Lcom/facebook/share/internal/ShareInternalUtility$6;->val$callId:Ljava/util/UUID;

    invoke-static {v3, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->access$000(Ljava/util/UUID;Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    .line 327
    .local v0, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    if-nez v0, :cond_1

    .line 328
    const/4 v2, 0x0

    .line 343
    :cond_0
    :goto_0
    return-object v2

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/facebook/share/internal/ShareInternalUtility$6;->val$attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 335
    .local v2, "photoJSONObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "url"

    .line 336
    invoke-virtual {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    const-string/jumbo v3, "user_generated"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/facebook/FacebookException;

    const-string/jumbo v4, "Unable to attach images"

    invoke-direct {v3, v4, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
