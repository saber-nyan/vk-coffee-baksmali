.class final synthetic Lcom/vkcoffee/android/AuthActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/AuthActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AuthActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/AuthActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AuthActivity$$Lambda$3;-><init>(Lcom/vkcoffee/android/AuthActivity;)V

    return-object v0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/AuthActivity;->lambda$onCreate$242(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
