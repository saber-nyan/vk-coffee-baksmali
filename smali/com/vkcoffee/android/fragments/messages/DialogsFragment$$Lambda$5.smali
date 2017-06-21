.class final synthetic Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/functions/VoidF1;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/functions/VoidF1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/functions/VoidF1;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/functions/VoidF1;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$5;-><init>(Lcom/vkcoffee/android/functions/VoidF1;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/functions/VoidF1;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onCreateContentView$457(Lcom/vkcoffee/android/functions/VoidF1;Landroid/view/View;)V

    return-void
.end method
