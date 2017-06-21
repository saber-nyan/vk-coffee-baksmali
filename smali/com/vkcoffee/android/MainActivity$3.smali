.class Lcom/vkcoffee/android/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MainActivity;->showAbout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ccnt:I

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MainActivity$3;->val$context:Landroid/content/Context;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/MainActivity$3;->ccnt:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 392
    iget v1, p0, Lcom/vkcoffee/android/MainActivity$3;->ccnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vkcoffee/android/MainActivity$3;->ccnt:I

    .line 393
    iget v1, p0, Lcom/vkcoffee/android/MainActivity$3;->ccnt:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 394
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 395
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "id"

    const v2, -0x5f4e442

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    const-class v1, Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/MainActivity$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 399
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
