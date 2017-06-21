.class Lcom/vkcoffee/android/AudioPlayerService$4;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerService;->lambda$updateNotification$236()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$4;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1696
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 5
    .param p1, "_bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 1675
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$4;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$4;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-eq p3, v2, :cond_1

    .line 1691
    :cond_0
    :goto_0
    return-void

    .line 1678
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$4;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$2100(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$4;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$2200(Lcom/vkcoffee/android/AudioPlayerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1680
    move-object v0, p1

    .line 1681
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/high16 v2, 0x43020000    # 130.0f

    :try_start_0
    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x43020000    # 130.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1682
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$4;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$2100(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f100179

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1683
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 1684
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$4;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$2100(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v3, 0x7f100179

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1689
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$4;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const/16 v3, 0x12c

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService$4;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkcoffee/android/AudioPlayerService;->access$2100(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1686
    :catch_0
    move-exception v1

    .line 1687
    .local v1, "x":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1
.end method
