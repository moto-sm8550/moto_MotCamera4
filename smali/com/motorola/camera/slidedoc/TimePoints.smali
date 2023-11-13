.class public final Lcom/motorola/camera/slidedoc/TimePoints;
.super Ljava/lang/Object;
.source "TimePoints.java"


# instance fields
.field public final points:[Landroid/graphics/Point;

.field public upMillis:J


# direct methods
.method public constructor <init>(J[Landroid/graphics/Point;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/motorola/camera/slidedoc/TimePoints;->upMillis:J

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/slidedoc/TimePoints;->points:[Landroid/graphics/Point;

    return-void
.end method
