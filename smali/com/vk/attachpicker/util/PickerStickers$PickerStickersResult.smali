.class public Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;
.super Ljava/lang/Object;
.source "PickerStickers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/util/PickerStickers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickerStickersResult"
.end annotation


# instance fields
.field public baseUrl:Ljava/lang/String;

.field public stickerIds:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saveToCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/vk/attachpicker/util/Prefs;->pickerPrefs()Lcom/vk/attachpicker/util/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/Prefs;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "baseUrl"

    iget-object v2, p0, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;->baseUrl:Ljava/lang/String;

    .line 47
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "stickerIds"

    iget-object v2, p0, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;->stickerIds:[I

    .line 48
    invoke-static {v2}, Lcom/vk/attachpicker/util/PickerStickers;->access$000([I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method
