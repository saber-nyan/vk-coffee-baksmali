.class public abstract Lcom/vkcoffee/android/cache/MessagesAction;
.super Ljava/lang/Object;
.source "MessagesAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/database/sqlite/SQLiteDatabase;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
