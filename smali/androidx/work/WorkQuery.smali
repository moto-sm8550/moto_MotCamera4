.class public final Landroidx/work/WorkQuery;
.super Ljava/lang/Object;
.source "WorkQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkQuery$Builder;
    }
.end annotation


# instance fields
.field public final mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public final mStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo$State;",
            ">;"
        }
    .end annotation
.end field

.field public final mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUniqueWorkNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/work/WorkQuery$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/util/ArrayList;

    .line 4
    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mTags:Ljava/util/ArrayList;

    .line 5
    iget-object p1, p1, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/work/WorkQuery;->mStates:Ljava/util/ArrayList;

    return-void
.end method
