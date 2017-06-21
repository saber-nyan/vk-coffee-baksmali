.class final synthetic Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$$Lambda$4;->arg$1:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$$Lambda$4;-><init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$$Lambda$4;->arg$1:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->lambda$null$468()V

    return-void
.end method
