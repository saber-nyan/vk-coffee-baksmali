.class public final Lcom/jeremyfeinstein/slidingmenu/lib/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jeremyfeinstein/slidingmenu/lib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static selected_view:I

.field public static slidingmenumain:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/high16 v0, 0x7f030000

    sput v0, Lcom/jeremyfeinstein/slidingmenu/lib/R$id;->selected_view:I

    .line 15
    const v0, 0x7f030001

    sput v0, Lcom/jeremyfeinstein/slidingmenu/lib/R$id;->slidingmenumain:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
