.class final synthetic Lcom/vkcoffee/android/fragments/location/CheckInFragment$4$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment$4;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment$4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$4$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment$4;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/location/CheckInFragment$4;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$4$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$4$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment$4;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$4$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment$4;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$4;->lambda$onPostExecute$391()V

    return-void
.end method
