.class final synthetic Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/NewsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/NewsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/NewsFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$3;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/NewsFragment;->lambda$onCreateView$497(Landroid/view/View;)V

    return-void
.end method
