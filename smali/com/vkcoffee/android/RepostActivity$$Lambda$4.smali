.class final synthetic Lcom/vkcoffee/android/RepostActivity$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/RepostActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/RepostActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/RepostActivity$$Lambda$4;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/RepostActivity$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/RepostActivity$$Lambda$4;-><init>(Lcom/vkcoffee/android/RepostActivity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$$Lambda$4;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/RepostActivity;->lambda$repostWithComment$663(Landroid/content/DialogInterface;I)V

    return-void
.end method
