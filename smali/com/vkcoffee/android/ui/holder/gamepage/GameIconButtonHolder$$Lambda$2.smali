.class final synthetic Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;

.field private final arg$2:Z


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$2;->arg$1:Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;

    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$2;->arg$2:Z

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$2;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;Z)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$2;->arg$1:Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$2;->arg$2:Z

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->lambda$updateNotificationsStateDelayed$704(Z)V

    return-void
.end method
