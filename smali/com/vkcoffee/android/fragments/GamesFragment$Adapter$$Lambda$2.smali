.class final synthetic Lcom/vkcoffee/android/fragments/GamesFragment$Adapter$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter$$Lambda$2;->arg$1:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter$$Lambda$2;->arg$2:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter$$Lambda$2;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter$$Lambda$2;->arg$1:Ljava/lang/String;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter$$Lambda$2;->arg$2:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->lambda$fillGamePage$374(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
