.class final synthetic Lcom/vkcoffee/android/stickers/WindowRecyclerView$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/widget/PopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$$Lambda$1;->arg$1:Landroid/widget/PopupWindow;

    return-void
.end method

.method public static lambdaFactory$(Landroid/widget/PopupWindow;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView$$Lambda$1;-><init>(Landroid/widget/PopupWindow;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$$Lambda$1;->arg$1:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
