.class final synthetic Lcom/vkcoffee/android/GameCardActivity$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/GameCardActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/GameCardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/GameCardActivity$$Lambda$2;->arg$1:Lcom/vkcoffee/android/GameCardActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/GameCardActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/GameCardActivity$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/GameCardActivity$$Lambda$2;-><init>(Lcom/vkcoffee/android/GameCardActivity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity$$Lambda$2;->arg$1:Lcom/vkcoffee/android/GameCardActivity;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/GameCardActivity;->lambda$null$622(Landroid/content/DialogInterface;I)V

    return-void
.end method
