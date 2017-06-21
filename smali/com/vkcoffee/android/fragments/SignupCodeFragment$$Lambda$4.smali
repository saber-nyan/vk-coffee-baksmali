.class final synthetic Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/SignupCodeFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$4;-><init>(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)V

    return-object v0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->lambda$onCreateView$173(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
