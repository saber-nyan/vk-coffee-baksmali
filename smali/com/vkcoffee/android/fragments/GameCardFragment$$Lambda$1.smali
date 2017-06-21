.class final synthetic Lcom/vkcoffee/android/fragments/GameCardFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final arg$1:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$$Lambda$1;->arg$1:Landroid/view/GestureDetector;

    return-void
.end method

.method public static lambdaFactory$(Landroid/view/GestureDetector;)Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/GameCardFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$$Lambda$1;-><init>(Landroid/view/GestureDetector;)V

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$$Lambda$1;->arg$1:Landroid/view/GestureDetector;

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/fragments/GameCardFragment;->lambda$onViewCreated$367(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
