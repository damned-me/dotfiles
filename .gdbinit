source /usr/share/pwndbg/gdbinit.py
source /opt/splitmind/gdbinit.py
python
import splitmind
(splitmind.Mind()
  .below(display="backtrace")
  .right(display="stack")
  .right(display="regs")
  .right(of="main", display="disasm")
  .show("legend", on="disasm")
).build()
end
