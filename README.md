# BMFLC
## Tremor Cancellation Filter
Realtime filter to learn a multi-frequency signal (usually collected from hand motion) and remove specific high-frequency components (tremor frequencies) without a phase shift, used in medical robotics (teleoperative surgical robots)
- Change Mpi to simulate different noise inputs
- Change Mp in general for a real time-series of hand motion data
- Change phi to have the BMFLC only recreate certain fundamental frequencies that you want to be recreated

## LEARNING BEHAVIOR OF BMFLC

*Full recreation of input signal shown below*

![BMFLC](https://github.com/momoroowala/BMFLC/assets/10859547/17a0525c-a700-467f-bddb-1c75fcab707c)
