.class final synthetic Lcom/vkcoffee/android/ui/ListDialog$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final arg$1:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$3;->arg$1:Landroid/view/View;

    return-void
.end method

.method public static lambdaFactory$(Landroid/view/View;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$3;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$3;->arg$1:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ui/ListDialog;->lambda$show$708(Landroid/view/View;Landroid/content/DialogInterface;)V

    return-void
.end method
