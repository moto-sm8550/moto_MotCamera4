.class public final Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;
.super Ljava/lang/Object;
.source "PositionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morphoinc/app/panoramagp3/PositionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffManager"
.end annotation


# instance fields
.field public add_num:I

.field public ave:D

.field public index:I

.field public final pos:[D


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [D

    .line 2
    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->pos:[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->pos:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->index:I

    .line 5
    iput v1, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->add_num:I

    return-void
.end method
