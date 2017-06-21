.class Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;->onImageLoaded(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$1;->val$v:Landroid/view/View;

    const v1, 0x7f100195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    return-void
.end method
