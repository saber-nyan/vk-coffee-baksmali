.class final synthetic Lcom/vkcoffee/android/RepostActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/RepostActivity;

.field private final arg$2:I

.field private final arg$3:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/RepostActivity;ILandroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/RepostActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    iput p2, p0, Lcom/vkcoffee/android/RepostActivity$$Lambda$3;->arg$2:I

    iput-object p3, p0, Lcom/vkcoffee/android/RepostActivity$$Lambda$3;->arg$3:Landroid/widget/EditText;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;ILandroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/RepostActivity$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/RepostActivity$$Lambda$3;-><init>(Lcom/vkcoffee/android/RepostActivity;ILandroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    iget v1, p0, Lcom/vkcoffee/android/RepostActivity$$Lambda$3;->arg$2:I

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity$$Lambda$3;->arg$3:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/RepostActivity;->lambda$repostWithComment$662(ILandroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
