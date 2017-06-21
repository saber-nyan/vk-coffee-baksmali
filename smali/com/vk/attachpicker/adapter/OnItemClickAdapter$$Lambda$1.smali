.class final synthetic Lcom/vk/attachpicker/adapter/OnItemClickAdapter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/adapter/OnItemClickAdapter;

.field private final arg$2:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/adapter/OnItemClickAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/adapter/OnItemClickAdapter$$Lambda$1;->arg$1:Lcom/vk/attachpicker/adapter/OnItemClickAdapter;

    iput-object p2, p0, Lcom/vk/attachpicker/adapter/OnItemClickAdapter$$Lambda$1;->arg$2:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/adapter/OnItemClickAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/adapter/OnItemClickAdapter$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/adapter/OnItemClickAdapter$$Lambda$1;-><init>(Lcom/vk/attachpicker/adapter/OnItemClickAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/adapter/OnItemClickAdapter$$Lambda$1;->arg$1:Lcom/vk/attachpicker/adapter/OnItemClickAdapter;

    iget-object v1, p0, Lcom/vk/attachpicker/adapter/OnItemClickAdapter$$Lambda$1;->arg$2:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/vk/attachpicker/adapter/OnItemClickAdapter;->lambda$wrapHolder$2(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    return-void
.end method
