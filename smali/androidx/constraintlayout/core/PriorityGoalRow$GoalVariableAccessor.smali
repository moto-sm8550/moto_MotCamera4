.class public final Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/PriorityGoalRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoalVariableAccessor"
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

.field public variable:Landroidx/constraintlayout/core/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/PriorityGoalRow;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    const-string v1, "[ "

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 2
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "] "

    .line 4
    invoke-static {v1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
