.class final synthetic Lcom/vkcoffee/android/Auth$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Lcom/vkcoffee/android/Auth$AuthResultReceiver;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/Auth$$Lambda$2;->arg$1:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkcoffee/android/Auth$$Lambda$2;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkcoffee/android/Auth$$Lambda$2;->arg$3:Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/Auth$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/Auth$$Lambda$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/Auth$$Lambda$2;->arg$1:Ljava/lang/String;

    iget-object v1, p0, Lcom/vkcoffee/android/Auth$$Lambda$2;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/Auth$$Lambda$2;->arg$3:Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/Auth;->lambda$authorizeRestoreAsync$238(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)V

    return-void
.end method
