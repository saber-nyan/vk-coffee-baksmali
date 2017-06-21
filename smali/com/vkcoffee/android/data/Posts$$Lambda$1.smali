.class final synthetic Lcom/vkcoffee/android/data/Posts$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/NewsEntry;

.field private final arg$2:Landroid/widget/EditText;

.field private final arg$3:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/NewsEntry;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/data/Posts$$Lambda$1;->arg$1:Lcom/vkcoffee/android/NewsEntry;

    iput-object p2, p0, Lcom/vkcoffee/android/data/Posts$$Lambda$1;->arg$2:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/vkcoffee/android/data/Posts$$Lambda$1;->arg$3:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/NewsEntry;Landroid/widget/EditText;Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/data/Posts$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/data/Posts$$Lambda$1;-><init>(Lcom/vkcoffee/android/NewsEntry;Landroid/widget/EditText;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/data/Posts$$Lambda$1;->arg$1:Lcom/vkcoffee/android/NewsEntry;

    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$$Lambda$1;->arg$2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$$Lambda$1;->arg$3:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/data/Posts;->lambda$editRepostComment$273(Lcom/vkcoffee/android/NewsEntry;Landroid/widget/EditText;Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
