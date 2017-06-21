.class Lcom/vkcoffee/android/AudioAttachView$3;
.super Ljava/lang/Object;
.source "AudioAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioAttachView;->onPlayStateChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioAttachView;

.field final synthetic val$aid:I

.field final synthetic val$oid:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioAttachView;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iput p2, p0, Lcom/vkcoffee/android/AudioAttachView$3;->val$oid:I

    iput p3, p0, Lcom/vkcoffee/android/AudioAttachView$3;->val$aid:I

    iput p4, p0, Lcom/vkcoffee/android/AudioAttachView$3;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 292
    iget v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->val$oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iget v3, v3, Lcom/vkcoffee/android/AudioAttachView;->oid:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->val$aid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iget v3, v3, Lcom/vkcoffee/android/AudioAttachView;->id:I

    if-ne v0, v3, :cond_5

    .line 293
    iget-object v3, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iget v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->val$state:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->val$state:I

    if-ne v0, v5, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/AudioAttachView;->setPlaying(Z)V

    .line 294
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$200(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 295
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$300(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 296
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$400(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v4}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 297
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$500(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v4}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 298
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$300(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 299
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$200(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v3

    iget v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->val$state:I

    if-ne v0, v5, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setIndeterminate(Z)V

    .line 300
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$200(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v3, p0, Lcom/vkcoffee/android/AudioAttachView$3;->val$state:I

    if-eq v3, v5, :cond_4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$200(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 302
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$200(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 312
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 293
    goto :goto_0

    :cond_3
    move v0, v1

    .line 299
    goto :goto_1

    :cond_4
    move v2, v1

    .line 300
    goto :goto_2

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$200(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$200(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, v4}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 305
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$300(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v4}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 306
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$400(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 307
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$500(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 308
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$300(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$600(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iget v5, v5, Lcom/vkcoffee/android/AudioAttachView;->duration:I

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iget v5, v5, Lcom/vkcoffee/android/AudioAttachView;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$3;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioAttachView;->setPlaying(Z)V

    goto :goto_3
.end method
