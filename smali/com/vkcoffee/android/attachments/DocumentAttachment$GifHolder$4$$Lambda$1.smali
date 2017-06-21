.class final synthetic Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;

.field private final arg$2:Z


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4$$Lambda$1;->arg$1:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;

    iput-boolean p2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4$$Lambda$1;->arg$2:Z

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;Z)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4$$Lambda$1;-><init>(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;Z)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4$$Lambda$1;->arg$1:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;

    iget-boolean v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4$$Lambda$1;->arg$2:Z

    check-cast p1, Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->lambda$onPostExecute$197(ZLcom/vkontakte/android/ui/animation/MovieDrawable;)V

    return-void
.end method
