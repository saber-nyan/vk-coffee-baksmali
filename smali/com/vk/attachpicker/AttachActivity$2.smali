.class Lcom/vk/attachpicker/AttachActivity$2;
.super Ljava/lang/Object;
.source "AttachActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/AttachActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/AttachActivity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$2;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 162
    return-void
.end method

.method public success(Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;)V
    .locals 1
    .param p1, "result"    # Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {p1}, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;->saveToCache()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 147
    check-cast p1, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/AttachActivity$2;->success(Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;)V

    return-void
.end method
