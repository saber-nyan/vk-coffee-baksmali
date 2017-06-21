.class final synthetic Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/widget/OnItemClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;

.field private final arg$2:Lcom/vk/attachpicker/SelectionContext;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/fragment/GalleryFragment;Lcom/vk/attachpicker/SelectionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$2;->arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;

    iput-object p2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$2;->arg$2:Lcom/vk/attachpicker/SelectionContext;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/fragment/GalleryFragment;Lcom/vk/attachpicker/SelectionContext;)Lcom/vk/attachpicker/widget/OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$2;-><init>(Lcom/vk/attachpicker/fragment/GalleryFragment;Lcom/vk/attachpicker/SelectionContext;)V

    return-object v0
.end method


# virtual methods
.method public onItemClickListener(I)V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$2;->arg$1:Lcom/vk/attachpicker/fragment/GalleryFragment;

    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$2;->arg$2:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v0, v1, p1}, Lcom/vk/attachpicker/fragment/GalleryFragment;->lambda$onViewCreated$24(Lcom/vk/attachpicker/SelectionContext;I)V

    return-void
.end method
