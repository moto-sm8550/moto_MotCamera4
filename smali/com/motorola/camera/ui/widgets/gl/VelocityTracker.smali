.class public final Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;
    }
.end annotation


# instance fields
.field public final mMovementQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;",
            ">;"
        }
    .end annotation
.end field

.field public mScrollBackDirection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mScrollBackDirection:I

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    return-void
.end method
