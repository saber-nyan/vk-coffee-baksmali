.class final synthetic Lcom/vkcoffee/android/fragments/AuthCheckFragment$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1$$Lambda$1;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1$$Lambda$1;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;->lambda$onReceive$312(Ljava/lang/String;)V

    return-void
.end method
