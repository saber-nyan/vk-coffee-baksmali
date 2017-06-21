.class final synthetic Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$33;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final arg$2:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$33;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$33;->arg$2:Landroid/widget/EditText;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$33;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$33;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$33;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$33;->arg$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$showStatusEditDlg$576(Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method
