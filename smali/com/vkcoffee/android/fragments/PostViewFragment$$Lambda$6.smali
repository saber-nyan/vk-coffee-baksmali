.class final synthetic Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$6;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$onOptionsItemSelected$518(Landroid/content/DialogInterface;I)V

    return-void
.end method
