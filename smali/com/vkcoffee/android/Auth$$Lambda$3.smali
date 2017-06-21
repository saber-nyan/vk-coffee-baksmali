.class final synthetic Lcom/vkcoffee/android/Auth$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/Auth$$Lambda$3;->arg$1:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/Auth$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/Auth$$Lambda$3;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/Auth$$Lambda$3;->arg$1:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/Auth;->lambda$ensureLoggedIn$239(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
