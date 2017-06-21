.class Lcom/vkcoffee/android/AudioPlayerActivity$11;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/AudioPlayerActivity$11;)Lcom/vkcoffee/android/AudioPlayerActivity;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    sget-boolean v3, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v3, :cond_1

    .line 324
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 325
    .local v0, "fakeView":Landroid/view/View;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 327
    .local v2, "pos":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 328
    const/4 v3, 0x0

    aget v3, v2, v3

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 329
    const/4 v3, 0x1

    aget v3, v2, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 330
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 331
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-object v0, v3, Lcom/vkcoffee/android/AudioPlayerActivity;->anchor:Landroid/view/View;

    .line 335
    .end local v0    # "fakeView":Landroid/view/View;
    .end local v2    # "pos":[I
    :goto_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v4, v4, Lcom/vkcoffee/android/AudioPlayerActivity;->anchor:Landroid/view/View;

    invoke-direct {v1, v3, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 336
    .local v1, "pm":Landroid/widget/PopupMenu;
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/AudioPlayerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 337
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/AudioPlayerActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 338
    new-instance v3, Lcom/vkcoffee/android/AudioPlayerActivity$11$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$11$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$11;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 343
    sget-boolean v3, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v3, :cond_0

    .line 344
    new-instance v3, Lcom/vkcoffee/android/AudioPlayerActivity$11$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$11$2;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$11;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 350
    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 351
    return-void

    .line 333
    .end local v1    # "pm":Landroid/widget/PopupMenu;
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-object p1, v3, Lcom/vkcoffee/android/AudioPlayerActivity;->anchor:Landroid/view/View;

    goto :goto_0
.end method
