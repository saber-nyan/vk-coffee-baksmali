.class final synthetic Lcom/vkcoffee/android/cache/Cache$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$1:I

.field private final arg$2:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vkcoffee/android/cache/Cache$$Lambda$1;->arg$1:I

    iput p2, p0, Lcom/vkcoffee/android/cache/Cache$$Lambda$1;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(II)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/cache/Cache$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/cache/Cache$$Lambda$1;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/vkcoffee/android/cache/Cache$$Lambda$1;->arg$1:I

    iget v1, p0, Lcom/vkcoffee/android/cache/Cache$$Lambda$1;->arg$2:I

    check-cast p1, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;

    check-cast p2, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;

    invoke-static {v0, v1, p1, p2}, Lcom/vkcoffee/android/cache/Cache;->lambda$getUpcomingBirthdays$245(IILcom/vkcoffee/android/cache/Cache$BirthdayEntry;Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;)I

    move-result v0

    return v0
.end method
