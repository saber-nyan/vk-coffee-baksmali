.class public Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;
.super Ljava/lang/Object;
.source "AppsGetGamePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/apps/AppsGetGamePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final application:Lcom/vkcoffee/android/data/ApiApplication;

.field public final feed:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/GameFeedEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final gameLeaderboards:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/GameLeaderboard;",
            ">;"
        }
    .end annotation
.end field

.field public isMember:Z

.field public final requestsDb:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final requestsServer:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final requestsServerReal:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final userPlayed:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/data/ApiApplication;)V
    .locals 1
    .param p1, "application"    # Lcom/vkcoffee/android/data/ApiApplication;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->userPlayed:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServerReal:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServer:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsDb:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->feed:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->gameLeaderboards:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    .line 50
    return-void
.end method
