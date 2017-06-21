.class final synthetic Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final arg$2:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$9;->arg$2:Landroid/widget/EditText;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$9;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$9;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$9;->arg$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$editRepostComment$521(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
