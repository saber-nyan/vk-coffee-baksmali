.class Lcom/vkcoffee/android/AudioPlayerActivity$22$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$22;->notAvailable(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

.field final synthetic val$aid:I

.field final synthetic val$oid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$22;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/AudioPlayerActivity$22;

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

    iput p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$2;->val$aid:I

    iput p3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$2;->val$oid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity$22;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$2;->val$aid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity$22;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$2;->val$oid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity$22;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$1300(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity$22;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$1300(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100195

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1016
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity$22;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$1400(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1017
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1018
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
