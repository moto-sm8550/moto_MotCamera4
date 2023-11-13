.class public final Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/ReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportCursorWrapper"
.end annotation


# instance fields
.field public final mTag:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2
    iput p2, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;->mTag:I

    return-void
.end method
