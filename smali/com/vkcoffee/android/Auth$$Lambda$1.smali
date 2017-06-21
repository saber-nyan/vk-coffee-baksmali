.class final synthetic Lcom/vkcoffee/android/Auth$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/util/HashMap;

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Z

.field private final arg$6:Lcom/vkcoffee/android/Auth$AuthResultReceiver;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLcom/vkcoffee/android/Auth$AuthResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$1:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$3:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$4:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$5:Z

    iput-object p6, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$6:Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLcom/vkcoffee/android/Auth$AuthResultReceiver;)Ljava/lang/Runnable;
    .locals 7

    new-instance v0, Lcom/vkcoffee/android/Auth$$Lambda$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/Auth$$Lambda$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLcom/vkcoffee/android/Auth$AuthResultReceiver;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$1:Ljava/lang/String;

    iget-object v1, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$3:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$4:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$5:Z

    iget-object v5, p0, Lcom/vkcoffee/android/Auth$$Lambda$1;->arg$6:Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/Auth;->lambda$authorizeAsync$237(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLcom/vkcoffee/android/Auth$AuthResultReceiver;)V

    return-void
.end method
