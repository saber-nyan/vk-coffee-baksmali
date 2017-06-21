.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$15;
.super Ljava/lang/Object;
.source "NewPostFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/NewPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewPostFragment$Presenter$$Lambda$15"
.end annotation


# instance fields
.field private final arg$1:Landroid/app/AlertDialog;

.field private final arg$2:[Z


# direct methods
.method private constructor <init>(Landroid/app/AlertDialog;[Z)V
    .locals 0
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;
    .param p2, "zArr"    # [Z

    .prologue
    .line 1928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1929
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$15;->arg$1:Landroid/app/AlertDialog;

    .line 1930
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$15;->arg$2:[Z

    .line 1931
    return-void
.end method

.method public static lambdaFactory$(Landroid/app/AlertDialog;[Z)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "alertDialog"    # Landroid/app/AlertDialog;
    .param p1, "zArr"    # [Z

    .prologue
    .line 1934
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$15;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$15;-><init>(Landroid/app/AlertDialog;[Z)V

    return-object v0
.end method


# virtual methods
.method lambda$showOptions$489(Landroid/app/AlertDialog;[ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;
    .param p2, "zArr"    # [Z
    .param p3, "v"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1924
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 1925
    .local v0, "idx":I
    if-ltz v0, :cond_0

    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$15;->arg$1:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$15;->arg$2:[Z

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$15;->lambda$showOptions$489(Landroid/app/AlertDialog;[ZLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
