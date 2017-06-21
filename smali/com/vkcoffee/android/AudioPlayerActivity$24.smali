.class Lcom/vkcoffee/android/AudioPlayerActivity$24;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->doUpdateCover(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-boolean p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->val$force:Z

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/AudioPlayerActivity$24;)Lcom/vkcoffee/android/AudioPlayerActivity;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 970
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne v1, p1, :cond_1

    .line 971
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$20(Lcom/vkcoffee/android/AudioPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$22(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$19(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 975
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v1, :cond_1

    .line 976
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    new-instance v2, Lcom/vkcoffee/android/AudioPlayerActivity$24$2;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity$24$2;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$24;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 993
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 933
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    if-ne v0, p3, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oldOid:I

    if-ne v0, p2, :cond_2

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    new-instance v1, Lcom/vkcoffee/android/AudioPlayerActivity$24$1;

    iget-boolean v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$24;->val$force:Z

    invoke-direct {v1, p0, p1, v2}, Lcom/vkcoffee/android/AudioPlayerActivity$24$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$24;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 967
    :cond_2
    return-void
.end method
