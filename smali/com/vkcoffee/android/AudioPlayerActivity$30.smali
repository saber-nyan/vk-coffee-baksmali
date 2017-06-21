.class Lcom/vkcoffee/android/AudioPlayerActivity$30;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->setPlaying(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$playing:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$30;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-boolean p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$30;->val$playing:Z

    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$30;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->updatePager()V

    .line 1111
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$30;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v1, 0x7f10018d

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$30;->val$playing:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$24()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1112
    return-void

    .line 1111
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$25()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method
