.class final synthetic Lcom/vkcoffee/android/data/Messages$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# static fields
.field private static final instance:Lcom/vkcoffee/android/data/Messages$$Lambda$9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/data/Messages$$Lambda$9;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/Messages$$Lambda$9;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Messages$$Lambda$9;->instance:Lcom/vkcoffee/android/data/Messages$$Lambda$9;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    sget-object v0, Lcom/vkcoffee/android/data/Messages$$Lambda$9;->instance:Lcom/vkcoffee/android/data/Messages$$Lambda$9;

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p1}, Lcom/vkcoffee/android/data/Messages;->lambda$applyActions$271(Ljava/util/ArrayList;)V

    return-void
.end method
