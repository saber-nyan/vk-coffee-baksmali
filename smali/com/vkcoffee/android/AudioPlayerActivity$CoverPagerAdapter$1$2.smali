.class Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;->notAvailable(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$2;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$2;->val$v:Landroid/view/View;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$2;->val$v:Landroid/view/View;

    const v1, 0x7f100195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1$2;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;)Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;->access$1(Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$4(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    return-void
.end method
