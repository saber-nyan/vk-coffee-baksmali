.class final synthetic Lcom/vkcoffee/android/fragments/GamesRequestFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lme/grishka/appkit/views/DividerItemDecoration$Provider;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/GamesRequestFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)V

    return-object v0
.end method


# virtual methods
.method public needDrawDividerAfter(I)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->lambda$onCreateContentView$376(I)Z

    move-result v0

    return v0
.end method
