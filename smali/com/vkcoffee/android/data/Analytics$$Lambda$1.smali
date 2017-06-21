.class final synthetic Lcom/vkcoffee/android/data/Analytics$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final instance:Lcom/vkcoffee/android/data/Analytics$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/data/Analytics$$Lambda$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/Analytics$$Lambda$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Analytics$$Lambda$1;->instance:Lcom/vkcoffee/android/data/Analytics$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/vkcoffee/android/data/Analytics$$Lambda$1;->instance:Lcom/vkcoffee/android/data/Analytics$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->lambda$static$260()V

    return-void
.end method
