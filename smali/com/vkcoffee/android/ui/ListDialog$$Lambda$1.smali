.class final synthetic Lcom/vkcoffee/android/ui/ListDialog$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;

.field private final arg$2:Landroid/app/Dialog;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$1;->arg$2:Landroid/app/Dialog;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;Landroid/app/Dialog;)Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$1;-><init>(Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;Landroid/app/Dialog;)V

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$1;->arg$2:Landroid/app/Dialog;

    invoke-static {v0, v1, p1, p2}, Lcom/vkcoffee/android/ui/ListDialog;->lambda$show$706(Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;Landroid/app/Dialog;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
